package com.baizhi.entity;

public class BaiZhiSelect {
    private String id;
    private String source;
    private String price;
    private String options;
    private String sequence;

    public BaiZhiSelect() {
    }

    @Override
    public String toString() {
        return "BaiZhiSelect{" +
                "id='" + id + '\'' +
                ", source='" + source + '\'' +
                ", price='" + price + '\'' +
                ", options='" + options + '\'' +
                ", sequence='" + sequence + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public String getSequence() {
        return sequence;
    }

    public void setSequence(String sequence) {
        this.sequence = sequence;
    }

    public BaiZhiSelect(String id, String source, String price, String options, String sequence) {

        this.id = id;
        this.source = source;
        this.price = price;
        this.options = options;
        this.sequence = sequence;
    }
}
