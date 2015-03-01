jQuery(function($) {
  // Fetch valid CSRF tokens to use later
  $.getJSON("/membership/metadata.json").then(function(json) {
    $("meta[name=csrf-param]").attr("content", json.param);
    $("meta[name=csrf-token]").attr("content", json.token);

    var showFlash = function(message, status) {
      var name = (status === "success") ? "notice" : "alert";
      $(".flashes").html("<p class='flash " + name + "'>" + message + "</p>");
    };

    var sendToken = function(kind) {
      return function(token) {
        var data = {email: token.email, token: token.id, kind: kind};
        $.post(json.url, data, function(res) {
          if (res.url) {
            document.location = res.url;
          } else if (res.message) {
            showFlash(res.message, res.result);
          }
        }).fail(function(xhr, textStatus, errorThrown) {
          showFlash("Something went wrong. :(", "failure");
        });
      };
    };

    var createCheckout = function(kind, key) {
      return StripeCheckout.configure({
        key: key,
        image: "/images/rubies-square.png",
        token: sendToken(kind)
      });
    };

    var checkoutIndividual = createCheckout("individual", json.stripe_key);
    $("a[data-subscription='individual']").click(function(e) {
      checkoutIndividual.open({
        name: "Ruby Together",
        description: "Monthly Membership Dues",
        amount: 4000
      });
      e.preventDefault();
    });

    var checkoutCorporate = createCheckout("corporate", json.stripe_key);
    $("a[data-subscription='corporate']").click(function(e) {
      checkoutCorporate.open({
        name: "Ruby Together",
        description: "Monthly Membership Dues",
        amount: 80000
      });
      e.preventDefault();
    });

  });
});