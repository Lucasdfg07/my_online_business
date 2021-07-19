import React from 'react'
import Image from 'next/image'
import LogoImage from '../../assets/logo.png'

import styles from '../../styles/shared/header.module.css'

const Navbar = () => {
    return (
        <nav className={`${styles.nav} fixed-top`}>
            <Image src={LogoImage}
                   width={200}
                   height={90} 
                   alt="Picture of the author" />
        </nav>
    )
}

export default Navbar;