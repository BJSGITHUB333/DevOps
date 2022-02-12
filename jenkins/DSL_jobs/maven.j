job('mymavenjob') {

    description('Maven dsl project')

    scm {
        git(https://github.com/BJSGITHUB333/DevOps.git'', 'master', {node -> node / 'extensions' << '' })
    }

    steps {
        maven {
            mavenInstallation('maven')
            goals('-B -DskipTests clean package')
        }
        maven {
            mavenInstallation('maven')
            goals('test')
        }
        
