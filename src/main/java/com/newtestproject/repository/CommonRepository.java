package com.newtestproject.repository;

public interface CommonRepository<T> {
    T show(int id);

    void save(T t);

    void update(int id, T t);

    void delete(int id);
}