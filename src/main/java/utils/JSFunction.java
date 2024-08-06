package utils;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
   // JSFunction 클래스는 메시지 알림창을 띄움
   // 특정 페이지로 이동하는 스크립트 코드 추가하는 메서드 포함
   
   public static void alertLocation(String msg, String url, JspWriter out) {
      try {
         String script = ""         // 삽입할 자바 스크립트 코드
               + "<script>"
               + "   alert('"+msg+"');"
               + "   location.href='"+url+"';"
               + "</script>";
         out.print(script);         // 스크립트 코드 out 내장객체로 출력(삽입)
      } catch (IOException e) {
//         e.printStackTrace();
      }
   }// alertLocation
   
   public static void alertBack(String msg, JspWriter out) {
      try {
         String script = ""         // 삽입할 자바 스크립트 코드
               + "<script>"
               + "   alert('"+msg+"');"
               + "   history.back();"
               + "</script>";
         out.print(script);         // 스크립트 코드 out 내장객체로 출력(삽입)
      } catch (IOException e) {
//         e.printStackTrace();
      }
   }
}
