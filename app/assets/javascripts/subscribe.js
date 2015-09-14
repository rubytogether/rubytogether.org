jQuery(function($) {
  $.getJSON("/csrf.json").then(function(json) {
    $("meta[name=csrf-param]").attr("content", json.param);
    $("meta[name=csrf-token]").attr("content", json.token);

    var blockUI = function() {
      $.blockUI({ message: $(".spinner"), css: {backgroundColor: "none", border: "none"} });
    };

    var showFlash = function(message, status) {
      var name = (status === "success") ? "notice" : "alert";
      // fill the flash div with the message and the class for the flash type
      $(".flashes").html("<p class='flash " + name + "'>" + message + "</p>");
      // scroll so that the flash is on the screen, if needed
      $('html, body').animate({scrollTop: $(".flashes").offset().top}, 1000);
    };

    var doneFn = function(res) {
      $.unblockUI();
      if (res.url) {
        setTimeout(function() {
          document.location = res.url;
        }, 250);
      }

      if (res.message) {
        showFlash(res.message, res.result);
      }

      if (res.replace) {
        $(res.replace.selector).text(res.replace.text);
      }
    };

    var failFn = function(xhr, textStatus, errorThrown) {
      $.unblockUI();
      showFlash("Something went wrong. :(", "failure");
    };

    var sendToken = function(kind) {
      return function(token) {
        blockUI();

        var url = (kind === "update") ? "/membership/card" : "/membership";
        var data = {email: token.email, token: token.id, kind: kind};

        $.post(url, data).done(doneFn).fail(failFn);
      };
    };

    $("a[data-subscription]").click(function(e) {
      var el = $(e.target);
      var kind = el.data("subscription");
      var amount = el.data("dollar-amount");

      var options = {
        description: el.data("subscription-name") + " ($" + amount + "/mo)",
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

    $("a[data-charge]").click(function(e) {
      var el = $(e.target);
      var amount = $("#" + el.data("amount-input")).val();

      var options = {
        description: "One-time contribution of $" + amount,
        email: $(e.target).data("email"),
        image: "/images/rubies-square.png",
        key: $("meta[name=stripe-token]").attr("content"),
        name: "Ruby Together",
        token: function(token) {
          blockUI();
          var url = "/charge";
          var data = {token: token.id, amount: amount, email: token.email};
          $.post(url, data).done(doneFn).fail(failFn);
        }
      };

      StripeCheckout.configure(options).open();
      e.preventDefault();
    });
  });
});
