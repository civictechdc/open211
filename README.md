open211
=======

#DC Community Data Commons

##PROBLEM STATEMENT

DC doesn't have a master source of community resource directory information. Our 211 is out of date, and not interoperable with other info systems. It's hard for people in need to find health/human/social services that they are eligible for. Many attempts to build community resource directories have come and gone, as each struggles to produce and maintain the data. This data should be commonly available, and everyone would benefit from it being so -- but we first have to demonstrate the viability of standardized community resource data served in an open platform! 

##Project

1. *Prototype Completed* Create an API to serve DC's 211 data.
  + [DC API](https://github.com/codefordc/open211/tree/master/DC_API)
  + We used [Ohana's Design](http://ohanapi.org/) to build a DC prototype version
2. *Prototype Completed* Create a website that allow easy access to DC's 211 data
  + [DC-Connect](http://dcopen211website.herokuapp.com/)
  + [Website Code](https://github.com/noahpatterson/DCOpen211DCConnect)
  + We used [San Mateo County's design](http://www.smc-connect.org/)
3. *Data conversion script* We created a first-draft data conversion script from .csv to MongoDB json in ruby
  + [Ruby data conversion script](https://github.com/codefordc/open211/blob/master/DC_API/data/ckan_import.rb)
  
##More work
Recently at a Hack session in San Fransisco, a group of civic hackers used our data import script to modify and tweak versions for their data [SF Open Referral](https://github.com/sfbrigade/sf-openreferral-transform-scripts)

Feel free to fork this project to improve or build your own!

Please submit an issue on either the [DC API](https://github.com/codefordc/open211/tree/master/DC_API) or [DC-Connect](http://dcopen211website.herokuapp.com/) if you find any problems

Full credit goes to Greg Bloom for leading this version of the project, Ohana.org for their code, and many many other civic hackers!
