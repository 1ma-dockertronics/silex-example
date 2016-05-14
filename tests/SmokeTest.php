<?php

class SmokeTest extends \PHPUnit_Framework_TestCase
{
    public function testRootRedirect()
    {
        $client = new \GuzzleHttp\Client(['allow_redirects' => false]);

        $response = $client->request('GET', 'http://web/');

        $this->assertSame(302, $response->getStatusCode());
    }
}
