import credentials
import smtplib


def send_email(subject, messages):
    try:
        server = smtplib.SMTP('smtp.gmail.com:587')
        server.ehlo()
        server.starttls()
        server.login(credentials.EMAIL_ADDRESS, credentials.PASSWORD)
        message = "Subject: {}\n\n{}".format(subject, messages)
        server.sendmail(credentials.EMAIL_ADDRESS, credentials.EMAIL_ADDRESS, message)
        server.quit()
        print("Success: Email sent!")
    except:
        print("Email failed to send")


subject = "test subject"
msg = "hello world"

send_email(subject, msg)
