

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class config {
 
    private String Websiteurl;
    private String Defaulturl;
    private String LoginUrl;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private HttpSession session;

    public String getWebsiteurl() {
        return Websiteurl;
    }

    public void setWebsiteurl(String websiteurl) {
        this.Websiteurl = websiteurl;
    }

    public String getDefaulturl() {
        return Defaulturl;
    }

    public void setDefaulturl(String defailturl) {
        this.Defaulturl = defailturl;
    }

    public String getLoginUrl() {
        return LoginUrl;
    }

    public void setLoginUrl(String loginUrl) {
        this.LoginUrl = loginUrl;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public HttpSession getSession() {
        return session;
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }
    
    
}
