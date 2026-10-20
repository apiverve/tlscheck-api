from setuptools import setup, find_packages

setup(
    name='apiverve_tlschecker',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='TLS Check inspects which TLS/SSL protocol versions a server supports. It probes TLS 1.0 through 1.3, reports which are negotiable, and derives a security verdict — the highest supported version, whether deprecated protocols are still exposed, and a composite risk score.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/tlscheck?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
