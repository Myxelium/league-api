let baseUrl = 'http://api-heaven.com/';$("#sel1").on('change',function(){$.get(        baseUrl + '?champ=' + $("#sel1").val(),        function(response) {            let runes = response.runes;                $('#main_rune0').val(runes.main_tree.keystone);                $('#main_rune1').val(runes.main_tree.slot1);                $('#main_rune2').val(runes.main_tree.slot2);                $('#main_rune3').val(runes.main_tree.slot3);                $('#main_rune4').val(runes.main_tree.slot4);                $('#main_rune5').val(runes.secondary_tree.keystone);                $('#main_rune6').val(runes.secondary_tree.slot1);                $('#main_rune7').val(runes.secondary_tree.slot2);                $('#main_rune8').val(runes.shards.slot1);                $('#main_rune9').val(runes.shards.slot2);                $('#main_rune10').val(runes.shards.slot3);         },        'json'    ).fail(function() {        if(!$("#autochamp") == ""){            console.log('Try removing the spaces and special characters.'); // or whatever        }            });});