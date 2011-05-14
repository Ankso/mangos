<?php

/*
*   Welcome to tweets retriever by Ankso.
*
*   This script retrieves the last tweet from all the usernames specified in the config file,
*   and inserts the data into MaNGOS realmd DB.
*
*   You must have php 5.x or higher in order to run this. You can run the script with:
*
*       - Linux: php tweets_retriever.php
*       - Windows: C:\Path_to_php_intalation\php.exe path_to_tweets_retriever.php\tweets_retriever.php
*
*   It will run until killed with Ctrl + C. Enjoy!
*/

$config = simplexml_load_file("Tconfig.xml");
if (!$config)
{
	printf("ERROR: Can't load configuration file!");
	sleep(10);
	die();
}

printf("\n\nWelcome to tweets retriever.");
printf("\n\nTo terminate the script, press Ctrl + C\n\n");

while(0 == 0) // :D
{
    for ($i = 0; $i < count($config->twitterData->username); ++$i)
    {
        printf("\nRetrieving last tweet from %s...", $config->twitterData->username[$i]);
        $tweet = simplexml_load_file("http://api.twitter.com/1/statuses/user_timeline/".$config->twitterData->username[$i].".xml");
        if ($text = $tweet->status[0]->text)
        {
            printf("\t\t\tDone!\nInserting into DB...");
            $connection = mysql_connect($config->db->host, $config->db->user, $config->db->password);
            if ($connection)
            {
                mysql_select_db($config->db->realmd);
                mysql_query("REPLACE INTO tweets VALUES (".$i.", '".$config->twitterData->username[$i]."', '".$text."')") or die(mysql_error());
                printf("\t\t\t\t\tDone!\n");
            }
            else
                printf("\nERROR: Can't connect to DB server!");
        }
        else
            printf("\nERROR: Can't retrieve tweets for username %s. Either the username doesn't exists, or Twitter server is down.", $config->twitterData->username[$i]);
    }
    sleep(((int)$config->app->sleep));
}

?>