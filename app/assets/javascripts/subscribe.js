jQuery(function($) {
  $.getJSON("/csrf.json").then(function(json) {
    $("meta[name=csrf-param]").attr("content", json.param);
    $("meta[name=csrf-token]").attr("content", json.token);

    var showFlash = function(message, status) {
      var name = (status === "success") ? "notice" : "alert";
      // fill the flash div with the message and the class for the flash type
      $(".flashes").html("<p class='flash " + name + "'>" + message + "</p>");
      // scroll so that the flash is on the screen, if needed
      $('html, body').animate({scrollTop: $(".flashes").offset().top}, 1000);
    };

    var doneFn = function(res) {
      if (res.url) {
        document.location = res.url;
      } else if (res.message) {
        showFlash(res.message, res.result);
      }

      if (res.result == "success") {
        $("form[data-membership]").hide();
      }
    };

    var failFn = function(xhr, textStatus, errorThrown) {
      showFlash("Something went wrong. :(", "failure");
    };

    var sendToken = function(kind) {
      return function(token) {
        var url = (kind === "update") ? "/membership/card" : "/membership";
        var data = {email: token.email, token: token.id, kind: kind};

        $("form[data-membership]").serializeArray().forEach(function(item) {
          data[item.name] = item.value;
        });

        $.post(url, data).done(doneFn).fail(failFn);
      };
    };

    $("a[data-subscription]").click(function(e) {
      var kind = $(e.target).data("subscription");
      var amount = $(e.target).data("dollar-amount");

      var options = {
        allowRememberMe: false,
        description: "Membership ($" + amount + " per month)",
        email: $(e.target).data("email"),
        image: "/images/rubies-square.png",
        key: $("meta[name=stripe-token]").attr("content"),
        name: "Ruby Together",
        panelLabel: "Subscribe",
        token: sendToken(kind)
      };

      StripeCheckout.configure(options).open();
      e.preventDefault();
    });
  });
});
