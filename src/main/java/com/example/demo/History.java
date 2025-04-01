package com.example.demo;
public class History {
    private String historyId;
    private String check_in_date;
    private String check_out_date;
    private String room_num;
    private String customer_id_type;
    private String customer_id_value;

    //Constructor
    public History(String historyId, String check_in_date, String check_out_date, String room_num, String customer_id_type, String customer_id_value) {
        this.historyId = historyId;
        this.check_in_date = check_in_date;
        this.check_out_date = check_out_date;
        this.room_num = room_num;
        this.customer_id_type = customer_id_type;
        this.customer_id_value = customer_id_value;
    }

    //Getters and Setters
    public String getHistoryId() {return historyId;}

    public void setHistoryId(String historyId) {this.historyId = historyId;}

    public String getCheck_in_date() {return check_in_date;}

    public void setCheck_in_date(String check_in_date) {this.check_in_date = check_in_date;}

    public String getCheck_out_date() {return check_out_date;}

    public void setCheck_out_date(String check_out_date) {this.check_out_date = check_out_date;}

    public String getRoom_num() {return room_num;}

    public void setRoom_num(String room_num) {this.room_num = room_num;}

    public String getCustomer_id_type() {return customer_id_type;}

    public void setCustomer_id_type(String customer_id_type) {this.customer_id_type = customer_id_type;}

    public String getCustomer_id_value() {return customer_id_value;}

    public void setCustomer_id_value(String customer_id_value) {this.customer_id_value = customer_id_value;}

}

