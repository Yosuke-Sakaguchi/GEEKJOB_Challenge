<%@ page pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    int n=Integer.parseInt(request.getParameter("number"));
    int s=0;
    int m=0;
    int l=0;
    int o=0;
    int p=0;
    %>
    <%!
        int calcA(int number,int prime){
        int i=0;
        int k=0;
        while(true){
            i=number%prime;
            if(i!=0||number==0){
                break;
            }
            k++;
            number=number-number/prime;
        }
        return k;
    }
        %>
        <%!
        int calcB(int prime,int cA,int number){
                int A=number;
                if(cA==0){
                    A=number;
                }else for(int k=0;k<cA;k++){
                    A=A/prime;
                }
                if(A==1){
                    A=0;
                }
            return A;
        }
        %>
        <%
            out.print(n+"<br>");
            if(calcA(n,2)!=0){
            out.print("2^"+calcA(n,2)+"<br>");
            }
            m=calcB(2,calcA(n,2),n);
            if(calcA(m,3)!=0){
            out.print("3^"+calcA(m,3)+"<br>");
            }
            l=calcB(3,calcA(m,3),m);
            if(calcA(l,5)!=0){
            out.print("5^"+calcA(l,5)+"<br>");
            }
            o=calcB(5,calcA(l,5),l);
            if(calcA(o,7)!=0){
            out.print("7^"+calcA(o,7)+"<br>");
            }
            p=calcB(7,calcA(o,7),o);
            if(p!=0&&p!=1){
                out.print("+"+p);
    }
%>