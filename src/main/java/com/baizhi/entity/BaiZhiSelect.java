package com.baizhi.entity;

public class BaiZhiSelect {
    private String id;
    private String source;
    private String options;
    private String sequence;

    @Override
    public String toString() {
        return "BaiZhiSelect{" +
                "id='" + id + '\'' +
                ", source='" + source + '\'' +
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

    public BaiZhiSelect(String id, String source, String options, String sequence) {

        this.id = id;
        this.source = source;
        this.options = options;
        this.sequence = sequence;
    }

    public BaiZhiSelect() {

    }
}
