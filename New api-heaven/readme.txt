connection.php = Fyll in databasanslutningen

Importera api_heaven.com.sql till phpmyadmin. Den är direkt exporterad därifrån.

I public_html/index.php så kommer du åt api'n. Den fungerar såhär: ?champ=jinx t ex. Alltså index.php?champ=jinx

I mappen edit/ har jag gjort ett mer användarvänligt interface för API'n där man skriver in exempelvis "jinx" så kommer informationen upp där med hjälp av bilder.
Den innehåller även en login knapp som leder användaren till kontrollpanelen.


/public_html/edit/controlpanel/index.php
Här är kontrollpanelen. Den kräver att man måste logga in.

	email: cmeducations@cmeducations.se
	password: cmeducations

När man har loggat in i kontrollpanelen, har man då tillåtelse att göra fler konton.

När man klickar på antingen: Update, New champ eller delete så laddar /scripts/style.js in de nya sidorna i en div med klass "edit".

Url till sidorna:
	
	/public_html/edit/controlpanel/modifydb/change.php - Update (READ, UPDATE)
	/public_html/edit/controlpanel/modifydb/add.php - New champ (READ, CREATE)
	/public_html/edit/controlpanel/modifydb/remove.php - Delete (READ, DELETE)
	/public_html/edit/controlpanel/auth/reg.php - Register (READ, CREATE)

	I varje fil ska det finnas kontroll så att om det är fel info som skickas mellan databasen och användaren så sk det bli ett felmeddelande. 
	
