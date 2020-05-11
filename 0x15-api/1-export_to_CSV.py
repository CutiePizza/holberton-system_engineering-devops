#!/usr/bin/python3
"""
Task 1
"""
import csv
import io
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
    my_list = []
    file_name = user_id + '.csv'
    with open(file_name, "w") as csv_file:
        writer = csv.writer(csv_file)
        for task in r.json():
            my_list.append(user_id)
            my_list.append(username)
            my_list.append(task['completed'])
            my_list.append(task['title'])
            writer.writerow(my_list)
            my_list = []
