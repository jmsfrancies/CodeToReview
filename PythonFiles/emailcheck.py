import emailcheck as email

def main():
    email_to_test = str(input("please enter your email: "))
    if "@" in email_to_test:
        if "gmail.com" in email_to_test:
            print("Gmail! ")
        elif "yahoo.com" in email_to_test:
            print("Yahoo! ")
        elif "charter.net" in email_to_test:
            print("Charter Network")
        else:
            print("invalid Email Address")
    else:
        print("No At sign")

main()