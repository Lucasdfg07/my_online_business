import Head from 'next/head'
import { useRouter } from 'next/router'

import styles from '../styles/home.module.css'

export default function Home() {
  return (
    <div>
      <Head>
        <title>Meu Negócio Online</title>
        <meta name="description" content="Meu negócio online!" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      
      <div className="row">
        <div className={`col ${styles.section} ${styles.line_in_middle}`}>
          <div>
            Seu negócio na internet <b>HOJE</b>

            <br />

            <button className={styles.button}>Saiba Como</button>
          </div>
        </div>

        <div className={`col ${styles.section}`}>
          <div className="fullscreen-bg">
            <iframe width="100%" height="100%" src="https://player.vimeo.com/video/518011303?mute=1&controls=0&autoplay=1" loop></iframe>
          </div>
        </div>
      </div>
    </div>
  )
}
