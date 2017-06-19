def member_url(email)
  user=User.where(email: "fred@fredjean.net").first
  token=user.generate_reset_password_token!
  app.membership_url(token: token)
end
puts "USAGE: member_url(email)"
