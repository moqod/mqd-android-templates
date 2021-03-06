task updateLocolise {
    doLast {
        def stringsFileName = 'strings.xml'
        def localisations = ['en': 'values']
        def apiKey = '${localiseKey}'

<#noparse>
        localisations.each {
            File path = new File("${project.projectDir}/src/main/res/${it.value}")
            if (!path.exists()) {
                path.mkdirs()
            }

            File file = new File(path, stringsFileName)
            if (!file.exists()) {
                file.createNewFile()
            }

            def url = "https://localise.biz:443/api/export/locale/${it.key}.xml?key=${apiKey}"
            println "Update ${file} from: ${url}"
            new URL(url).withInputStream { i ->
                file.withOutputStream {
                    it << i
                }
            }
        }
    }
}
</#noparse>
