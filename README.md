# bot-test-api
```
--- how to run and save file test result -----------------
    // Use run normal
    -> robot --outputdir tests/results/$(date +%Y%m%d_%H%M%S) tests/suites/
    -> robot --outputdir tests/results tests/(your_file_name.robot)

    // Use for Linux/macOS (bash/zsh)
    -> robot --outputdir tests/results/$(date +%Y%m%d_%H%M%S) tests/(your_file_name.robot)

    // Use for window(PowerShell)
    -> robot --outputdir tests/results/$(Get-Date -Format "yyyyMMdd_HHmmss") tests/(your_file_name.robot)

    // Use for Command line(CMD)
    -> robot --outputdir tests\results\%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2% tests\(your_file_name.robot)

```