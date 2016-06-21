/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.edu.challenge.service;

import java.util.LinkedList;
import java.util.List;
import org.edu.challenge.model.User;

/**
 *
 * @author jscruz
 */
public class UserSecurity {

    private final List<User> users;

    public UserSecurity() {
        users = new LinkedList<User>();
        addValidUsers();
    }

    private void addValidUsers() {

        User jc = new User("Juan", "Cruz", "jc", "x");
        User aa = new User("Arik", "Adas", "aa", "x");
        User guest = new User("guest", "guest", "guest", "x");

        users.add(jc);
        users.add(aa);
        users.add(guest);
    }

//    public boolean checkValidUser(String userName, String userPassword) {
//        boolean res = false;
//
//        for (User x : users) {
//            if (x.getLogin().equals(userName) && x.getPassword().equals(userPassword)) {
//                res = true;
//            }
//        }
//
//        return res;
//    }
    
    public User checkValidUser(String userName, String userPassword) {
        User user = null;

        System.out.println("userName: " + userName);
        System.out.println("password:" + userPassword);
        
        int index = 0;
        while (user == null && index < users.size()) {
            User x = users.get(index);
            if (x.getLogin().equals(userName) && x.getPassword().equals(userPassword)) {
                System.out.println("BINGO !!!");
                user = x;
            }
            index++;
        }
        return user;
    }

}
