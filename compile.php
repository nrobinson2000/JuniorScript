<?php

/*

       _             _            _____           _       _   
      | |           (_)          / ____|         (_)     | |  
      | |_   _ _ __  _  ___  _ _| (___   ___ _ __ _ _ __ | |_ 
  _   | | | | | '_ \| |/ _ \| '__\___ \ / __| '__| | '_ \| __|
 | |__| | |_| | | | | | (_) | |  ____) | (__| |  | | |_) | |_ 
  \____/ \__,_|_| |_|_|\___/|_| |_____/ \___|_|  |_| .__/ \__|
                                                   | |        
                                                   |_|      
                                                   
JuniorScript Compiler v1.0
© JuniorCode, 2016
*/


// Start compiling

checkCmd(); // Check commands & compile
echo "Compiled."


// PHP Functions

function checkCmd() { // This will compile JuniorScript code
$jrs_file = array_values($argv)[1];
$jrs_version = "1.0";

// JuniorScript Information
    if( strpos(file_get_contents($jrs_file),"jrs-info();") !== false) {
        file_put_contents($jrs_file, 'echo "Welcome to JuniorScript v" . $jrs_version', FILE_APPEND);
    }

    if( strpos(file_get_contents($jrs-file),"jrs-version();") !== false) {
        file_put_contents($jrs_file, 'echo "Running JuniorScript v" . $jrs_version', FILE_APPEND);
    }

}

?>
