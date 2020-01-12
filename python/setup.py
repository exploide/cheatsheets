---
syntax: python
---
import setuptools

setuptools.setup(
    name='pysomething',
    version='0.1.0-dev',
    author='Jane Doe',
    author_email='mail@example.org',
    url='https://example.org/pysomething',
    description='A nice Python project',
    long_description=open('README.md', 'r').read(),
    long_description_content_type='text/markdown',
    packages=setuptools.find_packages(),
    scripts=[
        'something.py',
    ],
    entry_points={
        'console_scripts': [
            'sometool=mypkg.__main__:main',
        ],
    },
    install_requires=[
        'dep1',
        'dep2>=1.0',
    ],
    python_requires='>=3',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
    ],
)
