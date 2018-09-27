import credentials
import smtplib

# I stored my credentials in credentials.py a better way of doing it
# would be to store them as environment variables then importing OS


def send_email(subject, messages, recepient):
    try:
        server = smtplib.SMTP('smtp.gmail.com:587')
        server.ehlo()
        server.starttls()
        server.login(credentials.EMAIL_ADDRESS, credentials.PASSWORD)
        message = "Subject: {}\n\n{}".format(subject, messages)
        server.sendmail(credentials.EMAIL_ADDRESS, recepient, message)
        server.quit()
        print("Success: Email sent!")
    except:
        print("Email failed to send")


recepient = ""
subject = "test subject"
msg = "hello world"

send_email(subject, msg, recepient)
