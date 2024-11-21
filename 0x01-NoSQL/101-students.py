#!/usr/bin/env python3
"""top students listing"""

from pymongo import MongoClient
client = MongoClient("mongodb://127.0.0.1:27017")
students_collection = client.my_db.students


def top_students(mongo_collection):
    """
    returns top students dict

    Args:
        mongo_collection
    """
    students = mongo_collection.find()
    top = []
    for student in students:
        avg = 0

        for topic in student["topics"]:
            avg += topic["score"]
        student["averageScore"] = avg/len(student["topics"])
        top.append(student)
    top = sorted(top, key=lambda x: x["averageScore"], reverse=True)

    return top
