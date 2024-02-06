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
    // print_r($authUrl);
    header('Location: http://localhost/configurator/v3/sso/sso_submit.php');
    exit;

// Check given state against previously stored one to mitigate CSRF attack
} elseif (empty($_GET['state']) || ($_GET['state'] !== $_SESSION['oauth2state'])) {
    unset($_SESSION['oauth2state']);
	header('Location: http://localhost/configurator/v3/sso/sso_submit.php');
    exit('Invalid state, make sure HTTP sessions are enabled.');
} else {
    // Try to get an access token (using the authorization coe grant)
    try {
        $token = $provider->getAccessToken('authorization_code', [
            'code' => $_GET['code']
        ]);
    } catch (Exception $e) {
		header('Location: http://localhost/configurator/v3/sso/sso_submit.php');
        exit('Failed to get access token: '.$e->getMessage());
    }

    // Optional: Now you have a token you can look up a users profile data
    try {
        $user = $provider->getResourceOwner($token);
			header ('Location: dashboard.php');
			exit ();					
		}catch (Exception $e) {
            header('Location: http://localhost/configurator/v3/sso/sso_submit.php');
            exit('Failed to get resource owner: '.$e->getMessage());
        }
    

		// logactivity ('Invalid Login Attempt - Username: '.$_REQUEST['username']);

    }

?>