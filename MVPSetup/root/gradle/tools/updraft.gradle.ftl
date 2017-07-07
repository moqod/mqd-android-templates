// Start updraft support

task assembleStageReleaseBuild(dependsOn: 'assembleStageRelease') {
}

task assembleStageDebugBuild(dependsOn: 'assembleStageDebug') {
}

task assembleProdReleaseBuild(dependsOn: ['assembleProdRelease', 'updateLocolise']) {
}

task assembleProdDebugBuild(dependsOn: ['assembleProdDebug', 'updateLocolise']) {
}

// delete unaligned files

android.applicationVariants.all {
    variant->
    variant.assemble.doLast {
        variant.outputs.each { output->
            File unaligned = output.packageApplication.outputFile;
            File aligned = output.outputFile
            if (!unaligned.getName().equalsIgnoreCase(aligned.getName())) {
                println "deleting " + unaligned.getName()
                unaligned.delete()
            }
        }
    }
}

// End updraft support
