# today
from tkinter import *
import tkinter.messagebox as ms
import mysql.connector as sq
import pandas as pd
import pyttsx3 as sp
window=Tk()
window.geometry("580x580")
import webbrowser as wb
    
def insert():
    def insert1():
        id=e_id.get()
        name=e_name.get();
        en=sp.init('sapi5')
        voices=en.getProperty('voices')
        en.setProperty('voice',voices[0].id)
        en.setProperty('rate',180)
        def speak(audio):
            en.say(audio)
            en.runAndWait()
        if __name__=="__main__":
                speak("book code")
                speak(id)
                speak("issued succefully")



        if(id=="" or name==""):
            ms.showinfo("insert required")
        else:
            con=sq.connect(host="localhost",user="root",password="system",database="om")
            cursor=con.cursor()
        
            #cursor.execute("insert into o values('"+id+"','"+ name +"','"+ ph+")")
            ST="update book set scode=('%s'),status='issue' where bookc=('%s')"%(name,id)
            cursor.execute(ST)
            cursor.execute("commit")
            #cursor.execute("commit")
            so=("update book set stock=stock-1 where bookc=('%s')"%(id))
            cursor.execute(so)
            cursor.execute("commit")
            sb=("update student set bookc=('%s') where id=('%s')"%(id,name))
            cursor.execute(sb)
            cursor.execute("commit")
            fi=("select bname from book where bookc=('%s')"%(id))
            cursor.execute(fi)
            result=cursor.fetchall()
            a=pd.DataFrame(result)
            sio=("update student set histroy=histroy+1 where id=('%s')"%(name))
            cursor.execute(sio)
            cursor.execute("commit")
            di=("select sname from student where bookc=('%s')"%(id))
            cursor.execute(di)
            result1=cursor.fetchall()
            a1=pd.DataFrame(result1)
            t=Label(win1,text="  inserted successfully  "+a+" "+a1)
            t.place(x=300,y=300)
            
            con.close()
    win1=Tk()
    win1.geometry("720x720")
    inb=Button(win1, text="insert book",font=("italic",10,"bold"),fg="white",bg="blue",command=insert1)
    inb.place(x=170,y=240)
    title=Label(win1,text="KUNAL GEHLOT ",font="times 30 bold",bg="red")
    title.place(x=5,y=5)
    title1=Label(win1,text="enter details for issuing the book",font="times 20 bold",bg="red")
    title1.place(x=15,y=60)
    label1=Label(win1,text="bookcode",font="times 20 bold")
    label1.place(x=20,y=120)
    label1=Label(win1,text="student code",font="times 20 bold")
    label1.place(x=20,y=180)
    e_id=Entry(win1)
    e_id.place(x=150,y=120)
    e_name=Entry(win1)
    e_name.place(x=170,y=180)
    
    #ph=e_phone.get();
    
    
    
    win1.mainloop()
def issue1():
    def issue2():
        iwd=e_id.get()
        name=e_name.get();
        #ph=e_phone.get();
        en=sp.init('sapi5')
        voices=en.getProperty('voices')
        en.setProperty('voice',voices[0].id)
        en.setProperty('rate',180)
        def speak(audio):
            en.say(audio)
            en.runAndWait()
        if __name__=="__main__":
            speak("book name ")
            speak(iwd)
            speak("was inserted into your data")
    
        if(iwd=="" or name==""):
            ms.showinfo("insert required")
        else:
            con=sq.connect(host="localhost",user="root",password="system",database="om")
            cursor=con.cursor()
            #cursor.execute("insert into o values('"+id+"','"+ name +"','"+ ph+")")
            st=("insert into book(bname,stock)values('{}','{}')".format(iwd,name))
            cursor.execute(st)
            cursor.execute("commit");
            #cursor.execute("commit")
            so="update book set bookc=(select (round(rand()*10000,0))) where bname='%s'"%(iwd)
            cursor.execute(so)
            cursor.execute("commit");
            t=Label(win2,text=iwd+"  inserted successfully  ")
            t.place(x=300,y=300)
            ms.showinfo("insert successfullY")
            con.close()
    win2=Tk()
    win2.geometry("720x720")
    ins=Button(win2, text="insert book",font=("italic",10,"bold"),fg="white",bg="blue",command=issue2)
    ins.place(x=170,y=240)
    title=Label(win2,text="WELLCOME TO SKY LIBRARY",font="times 30 bold",bg="red",borderwidth = 2,relief="solid")
    title.place(x=5,y=5)
    title1=Label(win2,text="ENTER BOOK DETAILS",font="times 20 bold",bg="red",borderwidth = 3,relief="solid")
    title1.place(x=15,y=60)
    label1=Label(win2,text="bookname",font="times 20 bold",borderwidth = 3,relief="solid")
    label1.place(x=20,y=120)
    label1=Label(win2,text="stock",font="times 20 bold",borderwidth = 3,relief="solid")
    label1.place(x=20,y=180)

#label1=Label(window,text="prove",font="times 20 bold")
#label1.place(x=20,y=170)
    e_id=Entry(win2)
    e_id.place(x=170,y=120)
    e_name=Entry(win2)
    e_name.place(x=170,y=180)
#e_phone=Entry()
#e_phone.place(x=150,y=170)
    win2.mainloop()
def uni1():
    def uni2():
        ide=e_id.get()
        en=sp.init('sapi5')
        voices=en.getProperty('voices')
        en.setProperty('voice',voices[0].id)
        en.setProperty('rate',180)
        def speak(audio):
            en.say(audio)
            en.runAndWait()
        if __name__=="__main__":
            speak("book code ")
            speak(ide)
            speak("was unissued successfully. and updated in your data")
    #name=e_name.get();
    #ph=e_phone.get();
    
        if(id==""):
            ms.showinfo("insert required")
        else:
            con=sq.connect(host="localhost",user="root",password="system",database="om")
            cursor=con.cursor()
        
            #cursor.execute("insert into o values('"+id+"','"+ name +"','"+ ph+")")
            ST="update book set scode=null,status='unissue' where bookc=('%s')"%(ide)
            cursor.execute(ST)
            cursor.execute("commit")
            #cursor.execute("commit")
            so=("update book set stock=stock+1 where bookc=('%s')"%(ide))
            cursor.execute(so)
            cursor.execute("commit")
            sb=("update student set bookc=null where bookc=('%s')"%(ide))
            cursor.execute(sb)
            cursor.execute("commit")
        #fi=("select bname,status from book where bookc=('%s')"%(ide))
        #cursor.execute(fi)
        #result=cursor.fetchall()
        #a=pd.DataFrame(result)
        #di=("select sname from student where bookc=('%s')"%(id))
        #cursor.execute(di)
        #result1=cursor.fetchall()
        #a1=pd.DataFrame(result1)
            t=Label(win3,text="  book unissued successfully  ")
            t.place(x=300,y=300)
            ms.showinfo("insert successfullY")
            con.close()
    win3=Tk()
    win3.geometry("720x720")
    uins=Button(win3, text="unissue book",font=("italic",10,"bold"),fg="white",bg="blue",command=uni2)
    uins.place(x=170,y=240)
    title=Label(win3,text="WELLCOME TO SKY LIBRARY",font="times 30 bold",bg="red")
    title.place(x=5,y=5)
    title1=Label(win3,text="enter details for issuing the book",font="times 20 bold",bg="red")
    title1.place(x=15,y=60)
    label1=Label(win3,text="bookcode",font="times 20 bold")
    label1.place(x=20,y=120)
   

    #label1=Label(window,text="prove",font="times 20 bold")
    #label1.place(x=20,y=170)
    e_id=Entry(win3)
    e_id.place(x=150,y=120)
    win3.mainloop()
def std1():
    def std2():
        iwd=e_id.get()
        name=e_name.get();
        ph=e_phone.get();
    
        if(iwd=="" or name=="" or ph==""):
            ms.showinfo("insert required")
        else:
            con=sq.connect(host="localhost",user="root",password="system",database="om")
            cursor=con.cursor()
            #cursor.execute("insert into o values('"+id+"','"+ name +"','"+ ph+")")
            st=("insert into student(sname,branch,id)values('{}','{}','{}')".format(iwd,name,ph))
            cursor.execute(st)
            cursor.execute("commit");
            #cursor.execute("commit")
            ms.showinfo("insert successfully")
            en=sp.init('sapi5')
            voices=en.getProperty('voices')
            en.setProperty('voice',voices[0].id)
            en.setProperty('rate',180)
            def speak(audio):
                en.say(audio)
                en.runAndWait()
            if __name__=="__main__":
                speak("student name ")
                speak(iwd)
                speak("was inserted into your data")
            con.close()
    win4=Tk()
    win4.geometry("720x720")
    title=Label(win4,text="WELLCOME TO SKY LIBRARY",font="times 30 bold",bg="red")
    title.place(x=5,y=5)
    title1=Label(win4,text="ENTER BOOK DETAILS",font="times 20 bold",bg="red")
    title1.place(x=15,y=60)
    label1=Label(win4,text="name",font="times 20 bold")
    label1.place(x=20,y=100)
    label1=Label(win4,text="branch",font="times 20 bold")
    label1.place(x=20,y=150)
    label1=Label(win4,text="id",font="times 20 bold")
    label1.place(x=20,y=200)
    e_id=Entry(win4)
    e_id.place(x=150,y=100)
    e_name=Entry(win4)
    e_name.place(x=150,y=150)
    e_phone=Entry(win4)
    e_phone.place(x=150,y=200)
    insert=Button(win4, text="insert",font=("italic",10),command=std2)
    insert.place(x=170,y=240)
def eb1():
    en=sp.init('sapi5')
    voices=en.getProperty('voices')
    en.setProperty('voice',voices[0].id)
    en.setProperty('rate',180)
    def speak(audio):
        en.say(audio)
        en.runAndWait()
    if __name__=="__main__":
        speak("hello! Wellcome! to Ebooks section")

    def eb2():
        iwd=e_id.get()
        chp=e_name.get();
        
        #ph=e_phone.get();
    
        if(iwd==""):
            ms.showinfo("insert required")
        else:
            if(iwd=="2750"):
                t=Label(win5,text=iwd+"  inserted successfully  ")
                t.place(x=300,y=300)
                import webbrowser as wb
                if(chp=="1"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech101.pdf')
                if(chp=="2"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech102.pdf')
                if(chp=="3"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech103.pdf')
                if(chp=="4"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech104.pdf')
                if(chp=="5"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech105.pdf')
                if(chp=="6"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech106.pdf')
                if(chp=="7"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech107.pdf')
                if(chp=="8"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech108.pdf')
                if(chp=="9"):
                    wb.open_new(r'file://D:\piyush 12 NCERT\chem\lech1dd\lech109.pdf')
    win5=Tk()
    win5.geometry("720x720")
    title=Label(win5,text="WELLCOME TO SKY LIBRARY",font="times 30 bold",bg="red")
    title.place(x=5,y=5)
    title1=Label(win5,text="E-BOOK",font="times 20 bold",bg="red")
    title1.place(x=15,y=60)
    label1=Label(win5,text="BOOK CODE",font="times 20 bold")
    label1.place(x=20,y=100)
    e_id=Entry(win5)
    e_id.place(x=150,y=100)
    e_name=Entry(win5)
    e_name.place(x=150,y=150)
    
    
    label1=Label(win5,text="chapter",font="times 20 bold")
    label1.place(x=20,y=150)
    emi=Button(win5, text="DOWNLOAD",font=("italic",10),command=eb2)
    emi.place(x=170,y=240)
    en=sp.init('sapi5')
    voices=en.getProperty('voices')
    en.setProperty('voice',voices[0].id)
    en.setProperty('rate',180)
    def speak(audio):
        en.say(audio)
        en.runAndWait()
        if __name__=="__main__":
            speak("hello! Wellcome! to Ebooks section")

def gra():
    import mysql.connector as sq
    import matplotlib.pyplot as plt
    import pandas as pd

    
    con=sq.connect(host="localhost",user="root",password="system",database="om")
    cursor=con.cursor()
    #cursor.execute("insert into o values('"+id+"','"+ name +"','"+ ph+")")
    st=("select sname,histroy from student")
    cursor.execute(st)

    result=cursor.fetchall()
    
    aaa=pd.DataFrame(result,columns=['name','history'])
    
    aaa.plot.bar(x='name',color='red')
            
        
insert=Button(window, text="issue book",font=("italic",10,"bold"),fg="white",bg="black",command=insert)
insert.place(x=170,y=200)
bookd=Button(window, text="ENTER BOOK",font=("italic",10,"bold"),fg="white",bg="black",command=issue1)
bookd.place(x=170,y=230)
uni=Button(window, text="UNISSUE BOOK",font=("italic",10,"bold"),fg="white",bg="black",command=uni1)
uni.place(x=170,y=260)
std=Button(window, text="ENTER NEW STUDENT",font=("italic",10,"bold"),fg="white",bg="black",command=std1)
std.place(x=170,y=290)
ebo=Button(window, text="E-BOOKS",font=("italic",10,"bold"),fg="white",bg="black",command=eb1)
ebo.place(x=170,y=320)
stre=Button(window, text="STUDENT READINGS",font=("italic",10,"bold"),fg="white",bg="black",command=gra)
stre.place(x=170,y=350)

#label1=Label(window,text="prove",font="times 20 bold")
#label1.place(x=20,y=170)
en=sp.init('sapi5')
voices=en.getProperty('voices')
en.setProperty('voice',voices[0].id)
en.setProperty('rate',180)
def speak(audio):
    en.say(audio)
    en.runAndWait()
if __name__=="__main__":
    speak("hello! good morning kunal sir!, wellcome to sky library  ")


window.mainloop()
