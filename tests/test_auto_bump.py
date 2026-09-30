"""The auto-bump must hash the same immutable ZIP that Homebrew installs."""

from pathlib import Path
import re
from string import Template
import unittest


ROOT = Path(__file__).resolve().parents[1]


class AutoBumpDownloadTests(unittest.TestCase):
    def test_workflow_download_matches_the_cask(self):
        workflow = (ROOT / ".github/workflows/auto-bump.yml").read_text()
        cask = (ROOT / "Casks/notchy.rb").read_text()
        workflow_url = re.search(r'^\s+URL="([^"]+)"$', workflow, re.MULTILINE)
        cask_url = re.search(r'^\s+url "([^"]+)"', cask, re.MULTILINE)
        self.assertIsNotNone(workflow_url, "Workflow must declare its ZIP URL")
        self.assertIsNotNone(cask_url, "Cask must declare its download URL")
        for version in ("1.0.189", "1.0.190"):
            with self.subTest(version=version):
                download = Template(workflow_url[1]).substitute(VERSION=version)
                installed = cask_url[1].replace("#{version}", version)
                self.assertEqual(download, installed)
                self.assertEqual(
                    download,
                    "https://github.com/vishvavariya/notchy-feedback/releases/"
                    f"download/v{version}/Notchy-{version}.zip",
                )


if __name__ == "__main__":
    unittest.main()
