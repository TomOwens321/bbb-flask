#!/usr/bin/env python
"""
  BBB app entrypoint
"""

from app import app

if __name__ == "__main__":
    app.run(host='0.0.0.0')
