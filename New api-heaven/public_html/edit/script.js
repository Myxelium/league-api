function delay(callback, ms) {
	var timer = 0;
	return function() {
	  var context = this, args = arguments;
	  clearTimeout(timer);
	  timer = setTimeout(function () {
		callback.apply(context, args);
	  }, ms || 0);
	};
  }
$(document).ready(function() {
	let list    = $('.main');
	let sec 	= $('.secondary');
	let bonus 	= $('.bonus');
	let icon	= $('.icon');
	let baseUrl = 'http://api-heaven.com/';
	let championname;
	$("#autochamp").on("input change keyup", delay(function (e){
		list.html('');
		icon.html('');
		sec.html('');
		bonus.html('');
		championname = $("#autochamp");
		$.get(
			baseUrl + '?champ=' + championname.val().toLowerCase().toString().split('.').join("").replace(/\s/g, ''),
			function(response) {
				let runes = response.runes;
					let keystone = $('<img class="runes" style="margin: 5px;" width="50px"></img>').attr("src",runes.main_tree.keystone_icon);
					let main_slot1 = $('<img class="runes" width="80px"></img>').attr("src",runes.main_tree.slot1_icon);
					let main_slot2 = $('<img class="runes" style="margin: 10px;" width="50px"></img>').attr("src",runes.main_tree.slot2_icon);
					let main_slot3 = $('<img class="runes" style="margin: 10px;" width="50px"></img>').attr("src",runes.main_tree.slot3_icon);
					let main_slot4 = $('<img class="runes" style="margin: 10px;" width="50px"></img>').attr("src",runes.main_tree.slot4_icon);

					let keystone_sec = $('<img class="runes" width="50px"></img>').attr("src",runes.secondary_tree.keystone_icon);
					let secondary_slot1 = $('<img class="runes" width="50px"></img>').attr("src",runes.secondary_tree.slot1_icon);
					let secondary_slot2 = $('<img class="runes" width="50px"></img>').attr("src",runes.secondary_tree.slot2_icon);

					let secondary_slot1_shards = $('<img class="runes" width="30px"></img>').attr("src",runes.shards.slot1_icon);
					let secondary_slot2_shards = $('<img class="runes" width="30px"></img>').attr("src",runes.shards.slot2_icon);
					let secondary_slot3_shards = $('<img class="runes" width="30px"></img>').attr("src",runes.shards.slot3_icon);
					let icon_database = $('<img class="hero_icon" style="border-radius: 50%;" width="60px"></img>').attr("src",runes.general.icon);
					icon.append(icon_database);
					list.append(keystone, main_slot1, main_slot2, main_slot3, main_slot4);
					sec.append(keystone_sec, secondary_slot1, secondary_slot2);
					bonus.append(secondary_slot1_shards, secondary_slot2_shards, secondary_slot3_shards);
			},
			'json'
		).fail(function() {
			if(!$( "#autochamp" ) == ""){
				list.html('Try removing the spaces and special characters.'); // or whatever
			}
			
		});
	}, 500));
});


