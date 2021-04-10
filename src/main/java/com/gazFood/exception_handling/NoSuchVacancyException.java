package com.gazFood.exception_handling;

public class NoSuchVacancyException extends RuntimeException{
    public NoSuchVacancyException(String message) {
        super(message);
    }
}
