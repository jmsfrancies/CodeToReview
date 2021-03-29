import emailcheck as email

def email_tester(email_to_test):
    if ".com" in email_to_test:
        print("Company Email ")
    elif ".edu" in email_to_test:
        print("Educational Email ")
    elif ".net" in email_to_test:
        print("Network Email ")
    elif ".org" in email_to_test:
        print("Organizational Email ")
    else:
        print("invalid Email Address")

def main():
    email_to_test = str(input("please enter your email: "))
    if "@" in email_to_test:
        email_tester(email_to_test)
    else:
        print("No At sign")

main()
