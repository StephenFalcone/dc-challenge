# README

Install Instructions:

* clone git repo

* edit database.yml if necessary

* run command: rails db:create db:migrate

* run command: rake import_csv:all

Run 'rails s' and point browser to http://localhost:3000/

Make GET requests to http://localhost:3000/event/#/json for raw JSON data, where # is event ID
(or just press JSON button on event page)
