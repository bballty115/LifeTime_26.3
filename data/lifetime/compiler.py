import os


GENERATED_MARKER = "# [Generated From Compiler]"


def users_to_list(src):
    """
    Convert a file containing users to a list.

    :param src: Source file
    """
    users_list = []

    with open(src, "r", encoding="utf-8") as user_file:
        for line in user_file:
            users_list.append(line.strip())

    return users_list


def tasks_to_tuple(src):
    """
    Convert a file containing tasks to tuples containing:
    task id, task title, and task description.

    Expected format:
    [TASKID]TASK TITLE: Task description

    Example:
    [1]GO TO SPACE: Reach Y-level 250

    :param src: Source file
    """
    tasks_list = []

    with open(src, "r", encoding="utf-8") as task_file:
        for line in task_file:
            line = line.strip()

            # Find the closing bracket for the task ID
            closing_bracket = line.index("]")

            # Extract the task ID from between [ and ]
            task_id = line[1:closing_bracket]

            # Everything after ] contains the title and description
            task_content = line[closing_bracket + 1:]

            title, description = task_content.split(": ", 1)

            tasks_list.append(
                (task_id, title, description)
            )

    return tasks_list


def generate_lines(line, tasks, users, admins):
    """
    Generate compiled lines from a compiler directive.

    The input line should have already had '#!c ' removed.
    """

    generated_lines = []

    # ADMINUSERNAME compilation
    #
    # This MUST come before USERNAME because
    # "ADMINUSERNAME" contains the string "USERNAME".
    if "ADMINUSERNAME" in line:
        for admin in admins:
            generated_line = line

            generated_line = generated_line.replace(
                "ADMINUSERNAMELOWER",
                admin.lower()
            )

            generated_line = generated_line.replace(
                "ADMINUSERNAME",
                admin
            )

            generated_lines.append(generated_line)

    # USERNAME compilation
    elif "USERNAME" in line:
        for user in users:
            generated_line = line

            generated_line = generated_line.replace(
                "USERNAMELOWER",
                user.lower()
            )

            generated_line = generated_line.replace(
                "USERNAME",
                user
            )

            generated_lines.append(generated_line)

    # TASK compilation
    elif "TASKID" in line:
        for task_id, title, description in tasks:
            generated_line = line

            generated_line = (
                generated_line
                .replace("TASKID", task_id)
                .replace("TASKTITLE", title)
                .replace("TASKDESCRIPTION", description)
                .replace("NEWLINE", "\n")
            )

            generated_lines.append(generated_line)

    # Number of tasks
    elif "NUMBEROFTASKS" in line:
        generated_line = line.replace(
            "NUMBEROFTASKS",
            str(len(tasks))
        )

        generated_lines.append(generated_line)

    # No recognized compiler variable
    else:
        generated_lines.append(line)

    return generated_lines


def compile_file(file_path, tasks, users, admins):
    """
    Compile a single file in place.

    Lines beginning with '#!c ' are compiler directives.

    Previously generated lines are removed before recompiling.
    """

    # Read the existing file
    with open(file_path, "r", encoding="utf-8") as source_file:
        lines = source_file.readlines()

    output_lines = []

    i = 0

    while i < len(lines):
        line = lines[i]

        # ---------------------------------------------
        # Skip previously generated lines
        # ---------------------------------------------
        if line.rstrip("\r\n") == GENERATED_MARKER:
            # Skip the marker
            i += 1

            # Skip the generated line after the marker
            if i < len(lines):
                i += 1

            continue

        # ---------------------------------------------
        # Compile compiler directives
        # ---------------------------------------------
        if line.startswith("#!c "):
            # Keep the original compiler directive and make sure
            # the generated output starts on a new line
            if not line.endswith("\n"):
                line += "\n"

            output_lines.append(line)

            # Remove "#!c " from the beginning
            compiler_line = line[4:]

            # Make sure it ends in a newline
            if not compiler_line.endswith("\n"):
                compiler_line += "\n"

            generated_lines = generate_lines(
                compiler_line,
                tasks,
                users,
                admins
            )

            for generated_line in generated_lines:
                # If NEWLINE generated multiple physical lines,
                # mark each one individually.
                physical_lines = generated_line.splitlines(
                    keepends=True
                )

                for physical_line in physical_lines:
                    if not physical_line.endswith("\n"):
                        physical_line += "\n"

                    output_lines.append(
                        GENERATED_MARKER + "\n"
                    )

                    output_lines.append(
                        physical_line
                    )

        # ---------------------------------------------
        # Normal line
        # ---------------------------------------------
        else:
            output_lines.append(line)

        i += 1

    # Rewrite the file with compiled contents
    with open(file_path, "w", encoding="utf-8") as dest_file:
        dest_file.writelines(output_lines)


def compile_directory(directory, tasks, users, admins):
    """
    Recursively compile all files inside a directory.
    """

    for root, dirs, files in os.walk(directory):
        for filename in files:
            file_path = os.path.join(root, filename)

            compile_file(
                file_path,
                tasks,
                users,
                admins
            )


if __name__ == "__main__":
    # Directory containing files to compile
    function_dir = "./function"

    # Compiler data
    task_file = "./tasks.txt"
    users_file = "./users.txt"
    admin_file = "./admin.txt"

    tasks = tasks_to_tuple(task_file)
    users = users_to_list(users_file)
    admins = users_to_list(admin_file)

    compile_directory(
        function_dir,
        tasks,
        users,
        admins
    )

    print(f"Compiled {function_dir} successfully.")