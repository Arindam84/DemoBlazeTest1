*** Variables ***
${validUserName}    Atestuser11
${validPassword}    Atestuser11!
${invalidUserName}    Atestuser12
${invalidPassword}    Atestuser12!
${invalidPassword_errorMessage}    Wrong password.
${invalidUserName_errorMessage}    User does not exist.
${browser}    headlesschrome
${chrome_options}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu")