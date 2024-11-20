#!/usr/bin/env python3
"""updating topic based on the name"""


def update_topics(mongo_collection, name, topics):
    """updating the topics

    Args:
        mongo_collection: to_be_updated
        name: key
        topics: new data
    """
    key = {"name": name}
    update = {"$set": {"topics": topics}}
    mongo_collection.update_many(key, update)
