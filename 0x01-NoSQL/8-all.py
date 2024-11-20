#!/usr/bin/env python3
"""retreiving the collection and returning documents"""


def list_all(mongo_collection):
    """returns documents of collection"""
    result = mongo_collection.find()
    return list(result)
