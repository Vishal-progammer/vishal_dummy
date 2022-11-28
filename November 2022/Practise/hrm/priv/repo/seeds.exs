# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hrm.Repo.insert!(%Hrm.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


# Hrm.Repo.insert!(%Hrm.GRS.Guest{
#   first_name: "sakhti",
#  last_name: "bala",
#  })


# Hrm.Repo.insert!(%Hrm.Host.GuestHouse{
#   name: "aspiration",
#   email: "mitra@gamil.com",
#   contact_number: 123456789
#  })


#  Hrm.Repo.insert!(%Hrm.GRS.Guest{
#   first_name: "vishal",
#   last_name: "jones",
#   nationality: "india"
#  })

Hrm.Repo.insert!(%Hrm.GRS.Office{
    title: "title 1",
    subtitle: "subtile 1 ",
    body: "body 1"
   })
