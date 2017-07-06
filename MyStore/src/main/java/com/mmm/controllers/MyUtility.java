package com.mmm.controllers;

public class MyUtility {

    public static boolean isEmpty(final String string) {
        return (string == null) || (string.trim().length() == 0);
    }
}
