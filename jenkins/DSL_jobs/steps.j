
job('valaxyjob') {

    description('This is my awesome Job')

  
    parameters {
        stringParam('Planet', defaultValue = 'world', description = 'This is the world')
	booleanParam('FLAG', true)
        choiceParam('OPTION', ['option 1 (default)', 'option 2', 'option 3'])
    }

    scm {
        git('https://github.com/BJSGITHUB333/DevOps.git', 'master')
    }

    triggers {
        cron('00 00 * * *')
    }

    steps {
        shell("echo 'Hello World'")
    }
}

