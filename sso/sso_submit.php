<?php session_start();
require_once('./vendor/autoload.php');

$provider = new Stevenmaguire\OAuth2\Client\Provider\Keycloak([
	 'authServerUrl'             => 'https://swayatta.esds.co.in:31266',
	 'realm'                     => 'master',
	 'clientId'                  => 'erp',
	 'clientSecret'              => 'P4BmgW4JvOOJU3TMHgkVAGJG4aQdgK80',
	 'redirectUri'               => 'http://localhost/configurator/v3/sso/sso_callback.php',
	 'encryptionAlgorithm'       => null,
	 'encryptionKey'             => null,
	 'encryptionKeyPath'         => null,
   'version'                   => '20.0.1'
 ]);
  
  if (!isset($_GET['code'])) {
   // If we don't have an authorization code then get one
   $authUrl = $provider->getAuthorizationUrl();
   $_SESSION['oauth2state'] = $provider->getState();
  //  print_r($_SESSION);
   header('Location: '.$authUrl);
   exit;
  }

// Check given state against previously stored one to mitigate CSRF attack
?>