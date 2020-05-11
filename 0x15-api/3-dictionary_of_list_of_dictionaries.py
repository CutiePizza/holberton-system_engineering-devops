#!/usr/bin/python3
"""
Task 3
"""
import json
import requests
import sys

if __name__ == "__main__":

    file_name = 'todo_all_employees.json'
    with open(file_name, "w") as json_file:
        r = requests.get('https://jsonplaceholder.typicode.com/users/')
        i = 1
        my_employees = {}
        for user in r.json():
            user_id = r.json()[i]['id']
            username = r.json()[i]['username']
            r2 = requests.get(
                    'https://jsonplaceholder.typicode.com/users/{}/todos'
                    .format(
                        user_id)
                    )
            my_employees[str(user_id)] = []
            for task in r2.json():
                dicti = {}
                dicti["username"] = username
                dicti["task"] = task["title"]
                dicti["completed"] = task["completed"]
                my_employees[str(user_id)].append(dicti)
            i = i + 1
        json.dump(my_employees, json_file)
