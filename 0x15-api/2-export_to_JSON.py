#!/usr/bin/python3
"""
Task 2
"""
import json
import requests
import sys

if __name__ == "__main__":

    user_id = sys.argv[1]
    r = requests.get('https://jsonplaceholder.typicode.com/users/{}'.format(
        user_id)
        )
    username = r.json()['username']
    r = requests.get(
            'https://jsonplaceholder.typicode.com/users/{}/todos'.format(
                user_id)
            )
    my_tasks = {str(user_id): []}
    file_name = str(user_id) + '.json'
    with open(file_name, "w") as json_file:
        for task in r.json():
            dic = {}
            dic["task"] = task["title"]
            dic["completed"] = task["completed"]
            dic["username"] = username
            my_tasks[user_id].append(dic)
        json.dump(my_tasks, json_file)
