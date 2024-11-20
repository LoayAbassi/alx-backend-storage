#!/usr/bin/env python3
"""printing stats from the logs db"""
from pymongo import MongoClient
if __name__ == "__main__":
    client = MongoClient("mongodb://127.0.0.1:27017")
    collection = client.logs.nginx

    # counting documents
    print("{} logs".format(collection.count_documents({})))

    print("Methods:")

    # counting methods
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]

    for method in methods:
        count = collection.count_documents({"method": method})
        print("\tmethod {}:{}".format(method, count))

    # checking status
    stat = collection.count_documents({"method": "GET", "path": "/status"})
    print("{} status check".format(stat))
