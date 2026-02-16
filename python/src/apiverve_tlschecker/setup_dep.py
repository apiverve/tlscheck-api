from setuptools import setup, find_packages

setup(
    name='apiverve_tlschecker',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='TLS Check is an API that inspects the TLS/SSL configuration of a server identified by its IP address. It reports supported protocols, cipher suites, and potential vulnerabilities.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/tlscheck?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
