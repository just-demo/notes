package self.ed.model;

import org.springframework.data.annotation.Id;

public class Note {
    @Id
    private String id;
    private String body;

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
