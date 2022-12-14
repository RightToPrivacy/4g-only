### 4G-ONLY SERVICE (Mitigate Downgrade Attacks Used To Attack Phone Privacy)

Originally Shared On The Gitea Onion (Tor Browser Access):
http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/4g-Only

---

Written + tested on (original model) Pinephone (should work with other Linux phones)

If you have difficulty with phone service with 4g-only enabled, try adding allowance for 3G by:

    systemctl stop 4g-only

    OR COMMAND:

    4g-only reset

    (On the above, 'systemctl stop 4g-only' [runs '4g-only reset' command] specifically allows for moments we want to allow 3G but it still PREFERS 4G 
    using the above command options. Should allow calls for those having issue with '4G only'. 
    'systemctl start 4g-only' AND simply '4g-only' commands will FORCE 
    ONLY 4G allowed for the modem and enable makes persistent for next boot.)

---

#### WHY?

Many (ex: "stingray" style hardware) attempt to downgrade services to 2g (officially shutdown in many areas), forcing your phone
to connect to potential false tower.

Not only a major invasion of privacy, service disruptions can come with this.

With 4G only service / command, (by default) phone allows 4G ONLY (prevent downgrade attacks/IMSI). If you don't have reliable 4G at the time, try Issuing:

    sudo systemctl stop 4g-only.service

or, if not running as service, you can use the command: 

    sudo 4g-only reset

to change to: 4G preferred, 3G allowed (for those without 4G nearby, or as reliable)

---

#### INSTALL:

    chmod +x install.sh

    sudo ./install.sh

(installing using above moves service / cmd files where they belong, and then enables the service)

By default, it enables the service to start on your next phone reboot.

You can also manually start (after ./install) with: 

    sudo systemctl start 4g-only.service

*To begin using the service immediately.*

---

#### USAGE:

Run as command forcing 4G only service: sudo 4g-only

There is also a 'reset' argument available, adding ability to use 3G if 4G not available. 

Enabling 3g (with 4G preferred) as command: 
    sudo 4g-only reset

You can also enable 3g as well by running: 

    sudo systemctl stop 4g-only.service

(this uses the 4g-only reset command to allow 3g if 4g is unavailable).

*What works best for you all depends on your surrounding service availability.*

*4G only works best for my uses - no good reason for my service to be downgraded* 

---

#### GET STARTED QUICK (INSTALL + START SERVICE IMMEDIATELY):

    1.) Download 4g-only service from Gitea onion

    2.) chmod +x install.sh

    3.) sudo install.sh && sudo systemctl start 4g-only.service


This service is to mitigate downgrade attacks used by IMSI catcher operators.

I have 4G in my area - leaving it enabled 24/7 works for me. Your area may be different.

If you need 3G as well, you can use the above mentioned reset argument.

---

#### HOWTO: COMPLETELY DISABLE 4g-only.service (if not right for your area) -

run:
 
    sudo systemctl stop 4g-only.service && sudo systemctl disable 4g-only.service 


*I may optimize more options in future.*

Read The Blog / Tutorials (public) / Support (if you like): https://buymeacoffee.com/politictech
