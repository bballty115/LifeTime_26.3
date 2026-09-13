# Most of this script was generated using chatgpt
# Credit where credit is due :p

import os

def users_to_list(src):
    """
    Convert a file containing users to a list

    :param src: Source directory for file
    """

    # Storage for the users list
    users_list = []

    # Open the file for reading
    with open(src, 'r') as user_file:
        # For each line in the file
        for line in user_file:
            # Append to the list of users
            users_list.append(line.strip())

    # Return the users list
    return users_list

def tasks_to_tuple(src):
    """
    Convert a file containing tasks to a tuple containing a task id, task title and task description

    :param src: Source directory for file
    """

    # Storage for the tasks list
    tasks_list = []

    # Starting task id is 1
    task_id = 1

    # Open the file for reading
    with open(src, 'r') as task_file:
        # For each line in the file
        for line in task_file:
            # Split the line into task name and description
            title, description = line.split(": ")
            # Append to the task list with the task id as a tuple
            tasks_list.append((str(task_id), title, description.strip()))
            # Increment the number of tasks by 1
            task_id += 1

    # Return the tasks list
    return tasks_list



def copy_directory(src, dest, tasks, users):
    """
    Recursively copy files and subdirectories from src to dest.
    
    :param src: Source directory
    :param dest: Destination directory
    """
    # Create the destination directory if it doesn't exist
    if not os.path.exists(dest):
        os.makedirs(dest)
    
    # Iterate through the items in the source directory
    for item in os.listdir(src):
        s = os.path.join(src, item)  # Source path
        d = os.path.join(dest, item)  # Destination path
        
        if os.path.isdir(s):
            # If it's a directory, recursively copy it
            copy_directory(s, d, tasks, users)
        else:
            # If it's a file, copy it line by line
            with open(s, 'r') as source_file:
                with open(d, 'w') as dest_file:
                    for line in source_file:
                        # If the line does not end with a newline, add in a newline
                        if not line.endswith("\n"):
                            line += "\n"
                        # If line contains the phrase "USERNAME"
                        if "USERNAME" in line:
                            # Create a copy of this line
                            line_copy = line
                            # For each username in the users list
                            for user in users:
                                # Replace USERNAMELOWER with lowercase variant of username in the line
                                line = line.replace("USERNAMELOWER", user.lower())
                                # Replace USERNAME with user in the line
                                line = line.replace("USERNAME", user)
                                # Write this line to the destination file
                                dest_file.write(line)
                                # Replace the line string with the original copy
                                line = line_copy
                        # If line contains the phrase "TASKID"
                        elif "TASKID" in line:
                            # Create a copy of this line
                            line_copy = line
                            # For each id,title,description in the tasks list
                            for id,title,description in tasks:
                                # Replace TASKID, TASKTITLE, TASKDESCRIPTION, NEWLINE accordingly
                                line = line.replace("TASKID",id).replace("TASKTITLE",title).replace("TASKDESCRIPTION",description).replace("NEWLINE",'\n')
                                # Write this line to the destination file
                                dest_file.write(line)
                                # Replace the line string with the original copy
                                line = line_copy
                        # If line contains the phrase "NUMBEROFTASKS"
                        elif "NUMBEROFTASKS" in line:
                            # Replace "NUMBEROFTASKS" with the number of tasks in the tasks list
                            line = line.replace("NUMBEROFTASKS", str(len(tasks)))
                            # Write to the destination file
                            dest_file.write(line)
                        # Otherwise, copy the line as normal
                        else:
                            dest_file.write(line)

if __name__ == "__main__":
    # Specify the root directory to copy
    root_dir = "./function_template"
    # Specify the destination directory
    dest_dir = "./function"
    # Specify the file containing the tasks
    task_file = "./tasks.txt"
    # Specify the file containing the users
    users_file = "./users.txt"

    copy_directory(root_dir, dest_dir, tasks_to_tuple(task_file), users_to_list(users_file))
    print(f"Copied {root_dir} to {dest_dir} successfully.")
