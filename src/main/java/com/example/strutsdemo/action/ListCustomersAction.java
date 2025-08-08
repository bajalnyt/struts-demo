package com.example.strutsdemo.action;

import com.example.strutsdemo.dao.CustomerDAO;
import com.example.strutsdemo.model.Customer;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.SQLException;
import java.util.List;

public class ListCustomersAction extends ActionSupport {

    private List<Customer> customers;

    public List<Customer> getCustomers() {
        return customers;
    }

    @Override
    public String execute() {
        CustomerDAO dao = new CustomerDAO();
        try {
            customers = dao.findAll();
            return SUCCESS;
        } catch (SQLException e) {
            addActionError("Failed to load customers: " + e.getMessage());
            return ERROR;
        }
    }
}
