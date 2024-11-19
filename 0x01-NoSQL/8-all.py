#!/usr/bin/env python3
"""retreiving the collection and returning documents"""


def list_all(mongo_collection):
    """returns documents of collection"""
    if mongo_collection.find().count() == 0:
        return []
    return mongo_collection.find()
