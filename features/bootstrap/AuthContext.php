<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class AuthContext extends BaseContext implements Context
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @Given I am a not registered user
     */
    public function iAmANotRegisteredUser()
    {
        throw new PendingException();
    }

    /**
     * @Given I see the the login form
     */
    public function iSeeTheTheLoginForm()
    {
        throw new PendingException();
    }

    /**
     * @Given I insert a correct username
     */
    public function iInsertACorrectUsername()
    {
        throw new PendingException();
    }

    /**
     * @Given I insert a correct password
     */
    public function iInsertACorrectPassword()
    {
        throw new PendingException();
    }

    /**
     * @When I click submit button
     */
    public function iClickSubmitButton()
    {
        throw new PendingException();
    }

    /**
     * @Then I can see a welcome message
     */
    public function iCanSeeAWelcomeMessage()
    {
        throw new PendingException();
    }

    /**
     * @Given I insert an incorrect password
     */
    public function iInsertAnIncorrectPassword()
    {
        throw new PendingException();
    }
}
