# -*- coding: utf-8 -*-

def test_file_content(s):
    assert s.run('ls -la').succeeded, "Проблема ..."
