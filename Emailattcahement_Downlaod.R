install.packages("gmailr")     #The GMAILR package
library(gmailr) 
gmail_auth("bullfinance.json", scope = 'full')     #Point to the authentication file from the google api website 

mymsg=messages(search = "mailid@gmail.com",num_results = 2,user_id ="me")   #Identify an email from a particular ID
listmsg=mymsg[[1]]$messages[[1]]$id         # Point to the first email 
aa=message(listmsg)
z=save_attachments(aa,user_id = "me")     # Download the attachement in the email to local disk
